defmodule Discuss.AddTopics do
  use Ecto.Schema
  import Ecto.Changeset

  schema "topics" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(add_topics, attrs) do
    add_topics
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
