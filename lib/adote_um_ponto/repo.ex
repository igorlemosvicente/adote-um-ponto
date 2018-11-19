defmodule AdoteUmPonto.Repo do
  use Ecto.Repo,
    otp_app: :adote_um_ponto,
    adapter: Ecto.Adapters.Postgres
end
