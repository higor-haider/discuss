defmodule Discuss.Topic  do
  use Ecto.Schema

  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    timestamps(type: :utc_datetime)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
