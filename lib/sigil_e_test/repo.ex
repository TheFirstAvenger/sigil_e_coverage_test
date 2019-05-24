defmodule SigilETest.Repo do
  use Ecto.Repo,
    otp_app: :sigil_e_test,
    adapter: Ecto.Adapters.Postgres
end
