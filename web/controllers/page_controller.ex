defmodule Dashboard.PageController do
  use Dashboard.Web, :controller

  alias Dashboard.{Mov, Show}

  def index(conn, _params) do
    render conn, "index.html"
  end

  def timelinedata(conn, _params) do
    text conn, init_data()
  end

  def timeline(conn, _params) do
    render conn, "timeline.html"
  end

  def init_data() do
    screens = %{}

    screen_one = %{
      title: "Screen One",
      shows: %{
        show1: [
          %Show{show_start_time: ~N[2018-07-27 11:30:00],
                show_end_time: ~N[2018-07-27 13:30:00]},
          %Mov{title: "Spider-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show2: [
          %Show{show_start_time: ~N[2018-07-27 09:30:00],
                show_end_time: ~N[2018-07-27 11:20:00]},
          %Mov{title: "Super-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show3: [
          %Show{show_start_time: ~N[2018-07-27 14:30:00],
                show_end_time: ~N[2018-07-27 16:30:00]},
          %Mov{title: "Bat-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ]
      }
    }

    screen_two = %{
      title: "Screen Two",
      shows: %{
        show1: [
          %Show{show_start_time: ~N[2018-07-27 11:30:00],
                show_end_time: ~N[2018-07-27 13:30:00]},
          %Mov{title: "Spider-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show2: [
          %Show{show_start_time: ~N[2018-07-27 09:30:00],
                show_end_time: ~N[2018-07-27 11:20:00]},
          %Mov{title: "Super-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show3: [
          %Show{show_start_time: ~N[2018-07-27 14:30:00],
                show_end_time: ~N[2018-07-27 16:30:00]},
          %Mov{title: "Bat-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ]
      }
    }

    screen_three = %{
      title: "Screen Three",
      shows: %{
        show1: [
          %Show{show_start_time: ~N[2018-07-27 17:30:00],
                show_end_time: ~N[2018-07-27 19:50:00]},
          %Mov{title: "Spider-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show2: [
          %Show{show_start_time: ~N[2018-07-27 09:50:00],
                show_end_time: ~N[2018-07-27 12:10:00]},
          %Mov{title: "Super-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ],
        show3: [
          %Show{show_start_time: ~N[2018-07-27 13:30:00],
                show_end_time: ~N[2018-07-27 17:10:00]},
          %Mov{title: "Bat-Man", image_url: "http://cosmiceye.netlify.com/assets/img/demo/spiderman.jpg"}
        ]
      }
    }

    screens = screens |> Map.put("screen_one", screen_one)
    screens = screens |> Map.put("screen_two", screen_two)
    screens = screens |> Map.put("screen_three", screen_three)

    # IO.inspect screens |> Poison.encode!

    screens |> Poison.encode!
  end



end
