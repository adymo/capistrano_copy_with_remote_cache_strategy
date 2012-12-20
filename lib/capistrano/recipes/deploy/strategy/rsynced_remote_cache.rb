require 'capistrano/recipes/deploy/strategy/remote'

module Capistrano
module Deploy
module Strategy

    # Implements the deployment strategy that keeps a cached copy.
    class RsyncedRemoteCache < Remote
        def deploy!
            update_repository_cache
            copy_repository_cache
        end

        def check!
            super.check do |d|
                d.remote.command("rsync")
                d.remote.writable(shared_path)
            end
        end

    private

        def repository_cache
            File.join(shared_path, configuration[:repository_cache] || "cached-copy")
        end

        def update_repository_cache
            logger.trace "updating the cached checkout"
            run_locally "rsync -avz --delete #{repository} $CAPISTRANO:HOST$:#{repository_cache}";
        end

        def copy_repository_cache
            logger.trace "copying the cached version to #{configuration[:release_path]}"
            run "cp -RPp #{repository_cache} #{configuration[:release_path]} && #{mark}"
        end

    end

end
end
end
