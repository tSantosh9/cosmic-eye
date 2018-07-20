defmodule Dashboard.PageController do
  use Dashboard.Web, :controller

  alias Dashboard.Movie

  def index(conn, _params) do
    render conn, "index.html"
  end

  def timelinedata(conn, _params) do
    text conn, initialize()
  end

  def timeline(conn, _params) do
    render conn, "timeline.html"
  end

  defp initialize() do
    mp = %{}

    screenOne = [
      %Movie{name: "Spider-man", screen_name: "Screen One", start_time: ~T[09:00:00], end_time: ~T[11:00:00]},
      %Movie{name: "Sniper", screen_name: "Screen One", start_time: ~T[11:30:00], end_time: ~T[13:45:00]},
      %Movie{name: "Hitman", screen_name: "Screen One", start_time: ~T[14:00:00], end_time: ~T[16:10:00]}
    ]

    screenTwo = [
      %Movie{name: "Fast and Furious", screen_name: "Screen Two", start_time: ~T[09:30:00], end_time: ~T[11:45:00]},
      %Movie{name: "Karate Kid", screen_name: "Screen Two", start_time: ~T[13:10:00], end_time: ~T[15:00:00]},
      %Movie{name: "Rockstar", screen_name: "Screen Two", start_time: ~T[15:20:00], end_time: ~T[18:10:00]}
    ]

    screenThree = [
      %Movie{name: "Fast and Furious 7", screen_name: "Screen Three", start_time: ~T[09:50:00], end_time: ~T[11:30:00]},
      %Movie{name: "Karate Kid 2", screen_name: "Screen Three", start_time: ~T[12:10:00], end_time: ~T[14:00:00]},
      %Movie{name: "Incredible", screen_name: "Screen Three", start_time: ~T[16:20:00], end_time: ~T[18:10:00]}
    ]

    mp = mp |> Map.put("Screen One", screenOne)
    mp = mp |> Map.put("Screen Two", screenTwo)
    mp = mp |> Map.put("Screen Three", screenThree)

    mp |> Poison.encode!
  end

  def tojson(conn, _params) do
    data = %{"label": ["One", "Two", "Three", "Four"],
              "data": [Enum.random(10..100), Enum.random(10..100),
                       Enum.random(10..100), Enum.random(10..100)
                      ]
            } |> Poison.encode!
    # json = %{"latitude": 37.8267,"longitude": -122.4233,"timezone": "America/Los_Angeles"}
    #         |> Poison.encode!
    text conn, data
  end

end
