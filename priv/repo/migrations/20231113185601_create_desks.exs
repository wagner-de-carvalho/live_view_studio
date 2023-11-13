defmodule LiveViewStudio.Repo.Migrations.CreateDesks do
  use Ecto.Migration

  def change do
    create table(:desks) do
      add :name, :string
      add :photo_locations, {:array, :string}

      timestamps(type: :utc_datetime)
    end
  end
end
