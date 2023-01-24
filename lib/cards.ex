defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Heart", "Diamond", "Spade", "Clubs"]

    for suit <- suits, value <- values do
        "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(card, deck)
  end
end
