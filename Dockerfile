FROM elixir:1.12-alpine
WORKDIR /useless_api
COPY . .
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
CMD ["mix", "run", "--no-halt"]