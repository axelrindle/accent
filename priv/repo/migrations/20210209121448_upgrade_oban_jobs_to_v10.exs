defmodule Accent.Repo.Migrations.UpgradeObanJobsToV10 do
  @moduledoc false
  use Ecto.Migration

  def up do
    Oban.Migrations.up(version: 10, prefix: get_env("DATABASE_SCHEMA") || "public")
  end

  def down do
    Oban.Migrations.down(version: 9, prefix: get_env("DATABASE_SCHEMA") || "public")
  end
end
