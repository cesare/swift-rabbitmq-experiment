defmodule Rabbitmq do
  def publish(title, text) do
    {:ok, message} = create_message(title, text)
    publish_message(message)
  end

  defp create_message(title, text) do
    JSON.encode(%{title: title, text: text})
  end

  defp publish_message(message) do
    {:ok, conn} = AMQP.Connection.open
    {:ok, chan} = AMQP.Channel.open(conn)
    AMQP.Basic.publish chan, "hello", "", message
  end
end
