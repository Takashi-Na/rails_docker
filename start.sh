# !/bin/sh

if [ "${RAILS_ENV}" = "production" ]
then
    bundle exec rails assets:precompile
fi

# railsサーバーを起動
bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0