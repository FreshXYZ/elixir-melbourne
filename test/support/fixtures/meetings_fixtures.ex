defmodule ElixirMelbourne.MeetingsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirMelbourne.Meetings` context.
  """

  @doc """
  Generate a question.
  """
  def question_fixture(attrs \\ %{}) do
    {:ok, question} =
      attrs
      |> Enum.into(%{})
      |> ElixirMelbourne.Meetings.create_question()

    question
  end

  @doc """
  Generate a attendee.
  """
  def attendee_fixture(attrs \\ %{}) do
    {:ok, attendee} =
      attrs
      |> Enum.into(%{})
      |> ElixirMelbourne.Meetings.create_attendee()

    attendee
  end

  @doc """
  Generate a question_vote.
  """
  def question_vote_fixture(attrs \\ %{}) do
    {:ok, question_vote} =
      attrs
      |> Enum.into(%{})
      |> ElixirMelbourne.Meetings.create_question_vote()

    question_vote
  end
end
