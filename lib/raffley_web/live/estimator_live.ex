defmodule RaffleyWeb.EstimatorLive do
  use RaffleyWeb, :live_view

  # mount
  def mount(_params, _sessions, socket) do
    {:ok, assign(socket, tickets: 0, price: 3)}
  end

  # handle_event
end
