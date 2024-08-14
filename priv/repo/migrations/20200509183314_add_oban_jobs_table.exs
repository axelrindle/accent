defmodule Accent.Repo.Migrations.AddObanJobsTable do
  @moduledoc false
  use Ecto.Migration

  def up do
    Oban.Migrations.up(prefix: get_env("DATABASE_SCHEMA") || "public")
  end

  # We specify `version: 1` in `down`, ensuring that we'll roll all the way back down if
  # necessary, regardless of which version we've migrated `up` to.
  def down do
    Oban.Migrations.down(version: 1, prefix: get_env("DATABASE_SCHEMA") || "public")
  end
end
