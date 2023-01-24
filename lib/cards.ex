defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Heart", "Diamond", "Spade", "Clubs"]

    cards = for value <- values do
      for suit <- suits do
        "#{value} of #{suit}"
      end
    end

    List.flatten(cards)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(card, deck)
  end
end
