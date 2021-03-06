defmodule Discuss.User do
  use Ecto.Schema

  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:email]}

  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    has_many :topics, Discuss.Topic, foreign_key: :user_id
    has_many :comments, Discuss.Comment

    timestamps(type: :utc_datetime)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
