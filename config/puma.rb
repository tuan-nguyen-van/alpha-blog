threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count
port        ENV.fetch("PORT") { 3000 }
app_dir = File.expand_path("../..", __FILE__)
environment "production"

bind "unix:///home/tuannguyen/deploy/apps/shared/tmp/sockets/puma.sock"
pidfile '/home/tuannguyen/deploy/apps/shared/tmp/pids/puma.pid'
state_path '/home/tuannguyen/deploy/apps/shared/tmp/pids/puma.state'
workers ENV.fetch("WEB_CONCURRENCY") { 2 }

plugin :tmp_restart