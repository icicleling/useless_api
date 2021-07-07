FROM elixir:1.12-alpine as builder
WORKDIR /project
ENV MIX_ENV=prod
COPY . .
RUN mix local.hex --force\
    && mix local.rebar --force\
    && mix deps.get\
    && mix release

FROM elixir:1.12-alpine
WORKDIR /app
COPY --from=builder /project/_build .
EXPOSE 8080
CMD [ "/app/prod/rel/useless_api/bin/useless_api", "start" ]