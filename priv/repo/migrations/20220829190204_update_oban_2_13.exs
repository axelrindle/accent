defmodule Accent.Repo.Migrations.UpdateOban213 do
  @moduledoc false
  use Ecto.Migration

  def up do
    Oban.Migrations.up(prefix: get_env("DATABASE_SCHEMA") || "public")
  end

  def down do
    Oban.Migrations.down(prefix: get_env("DATABASE_SCHEMA") || "public")
  end
end
