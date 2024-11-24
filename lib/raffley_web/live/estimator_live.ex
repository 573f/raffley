defmodule RaffleyWeb.EstimatorLive do
  use RaffleyWeb, :live_view

  # mount
  def mount(_params, _sessions, socket) do
    {:ok, assign(socket, tickets: 0, price: 3)}
  end

  # handle_event
  def handle_event("add", %{"quantity" => quantity}, socket) do
    {:noreply, update(socket, :tickets, &(&1 + String.to_integer(quantity)))}
  end
end
