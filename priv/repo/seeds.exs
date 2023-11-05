# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LiveViewStudio.Repo.insert!(%LiveViewStudio.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias LiveViewStudio.Repo
alias LiveViewStudio.Boats.Boat

%Boat{
  model: "1760 Retriever Jon",
  price: "$",
  type: "fishing",
  image: "/images/boats/1760-retriever-jon-deluxe.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1650 Super Hawk",
  price: "$",
  type: "fishing",
  image: "/images/boats/1650-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1850 Super Hawk",
  price: "$$",
  type: "fishing",
  image: "/images/boats/1850-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "1950 Super Hawk",
  price: "$$",
  type: "fishing",
  image: "/images/boats/1950-super-hawk.jpg"
}
|> Repo.insert!()

%Boat{
  model: "2050 Authority",
  price: "$$$",
  type: "fishing",
  image: "/images/boats/2050-authority.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Deep Sea Elite",
  price: "$$$",
  type: "fishing",
  image: "/images/boats/deep-sea-elite.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau First 14",
  price: "$$",
  type: "sailing",
  image: "/images/boats/beneteau-first-14.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau First 24",
  price: "$$$",
  type: "sailing",
  image: "/images/boats/beneteau-first-24.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Beneteau Oceanis 31",
  price: "$$$",
  type: "sailing",
  image: "/images/boats/beneteau-oceanis-31.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Quest",
  price: "$",
  type: "sailing",
  image: "/images/boats/rs-quest.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Feva",
  price: "$",
  type: "sailing",
  image: "/images/boats/rs-feva.jpg"
}
|> Repo.insert!()

%Boat{
  model: "RS Cat 16",
  price: "$$",
  type: "sailing",
  image: "/images/boats/rs-cat-16.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha SX190",
  price: "$",
  type: "sporting",
  image: "/images/boats/yamaha-sx190.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 212X",
  price: "$$",
  type: "sporting",
  image: "/images/boats/yamaha-212x.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Glastron GT180",
  price: "$",
  type: "sporting",
  image: "/images/boats/glastron-gt180.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Glastron GT225",
  price: "$$",
  type: "sporting",
  image: "/images/boats/glastron-gt225.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 275E",
  price: "$$$",
  type: "sporting",
  image: "/images/boats/yamaha-275e.jpg"
}
|> Repo.insert!()

%Boat{
  model: "Yamaha 275SD",
  price: "$$$",
  type: "sporting",
  image: "/images/boats/yamaha-275sd.jpg"
}
|> Repo.insert!()

# alias LiveViewStudio.Servers.Server

# %Server{
#   name: "dancing-lizard",
#   status: "up",
#   deploy_count: 14,
#   size: 19.5,
#   framework: "Elixir/Phoenix",
#   last_commit_message: "If this works, I'm going disco dancing. 🦎"
# }
# |> Repo.insert!()

# %Server{
#   name: "lively-frog",
#   status: "up",
#   deploy_count: 12,
#   size: 24.0,
#   framework: "Elixir/Phoenix",
#   last_commit_message: "Hopping on this rocket ship! 🚀"
# }
# |> Repo.insert!()

# %Server{
#   name: "curious-raven",
#   status: "up",
#   deploy_count: 21,
#   size: 17.25,
#   framework: "Ruby/Rails",
#   last_commit_message: "Fixed a bug! 🐞"
# }
# |> Repo.insert!()

# %Server{
#   name: "cryptic-owl",
#   status: "down",
#   deploy_count: 2,
#   size: 5.0,
#   framework: "Elixir/Phoenix",
#   last_commit_message: "Woot! First big launch! 🤞"
# }
# |> Repo.insert!()

# alias LiveViewStudio.Donations.Donation

# donation_items = [
#   {"☕️", "Coffee"},
#   {"🥛", "Milk"},
#   {"🥩", "Beef"},
#   {"🍗", "Chicken"},
#   {"🍖", "Pork"},
#   {"🍗", "Turkey"},
#   {"🥔", "Potatoes"},
#   {"🥣", "Cereal"},
#   {"🥣", "Oatmeal"},
#   {"🥚", "Eggs"},
#   {"🥓", "Bacon"},
#   {"🧀", "Cheese"},
#   {"🥬", "Lettuce"},
#   {"🥒", "Cucumber"},
#   {"🐠", "Smoked Salmon"},
#   {"🐟", "Tuna"},
#   {"🐡", "Halibut"},
#   {"🥦", "Broccoli"},
#   {"🧅", "Onions"},
#   {"🍊", "Oranges"},
#   {"🍯", "Honey"},
#   {"🍞", "Sourdough Bread"},
#   {"🥖", "French Bread"},
#   {"🍐", "Pear"},
#   {"🥜", "Nuts"},
#   {"🍎", "Apples"},
#   {"🥥", "Coconut"},
#   {"🧈", "Butter"},
#   {"🧀", "Mozzarella"},
#   {"🍅", "Tomatoes"},
#   {"🍄", "Mushrooms"},
#   {"🍚", "Rice"},
#   {"🍜", "Pasta"},
#   {"🍌", "Banana"},
#   {"🥕", "Carrots"},
#   {"🍋", "Lemons"},
#   {"🍉", "Watermelons"},
#   {"🍇", "Grapes"},
#   {"🍓", "Strawberries"},
#   {"🍈", "Melons"},
#   {"🍒", "Cherries"},
#   {"🍑", "Peaches"},
#   {"🍍", "Pineapples"},
#   {"🥝", "Kiwis"},
#   {"🍆", "Eggplants"},
#   {"🥑", "Avocados"},
#   {"🌶", "Peppers"},
#   {"🌽", "Corn"},
#   {"🍠", "Sweet Potatoes"},
#   {"🥯", "Bagels"},
#   {"🥫", "Soup"},
#   {"🍪", "Cookies"}
# ]

# for _i <- 1..200 do
#   {emoji, item} = Enum.random(donation_items)

#   %Donation{
#     emoji: emoji,
#     item: item,
#     quantity: Enum.random(1..20),
#     days_until_expires: Enum.random(1..30)
#   }
#   |> Repo.insert!()
# end

# alias LiveViewStudio.Athletes.Athlete

# %Athlete{
#   name: "Mike",
#   emoji: "🏄‍♂️",
#   sport: "Surfing",
#   status: :training
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Nicole",
#   emoji: "🏊‍♀️",
#   sport: "Swimming",
#   status: :competing
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Brin",
#   emoji: "🏄🏽",
#   sport: "Surfing",
#   status: :competing
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Alex",
#   emoji: "🚣🏽",
#   sport: "Rowing",
#   status: :resting
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Summer",
#   emoji: "🏄🏾‍♀️",
#   sport: "Surfing",
#   status: :resting
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Jason",
#   emoji: "🚣‍♂️",
#   sport: "Rowing",
#   status: :competing
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Logan",
#   emoji: "🏊🏼‍♂️",
#   sport: "Swimming",
#   status: :training
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Lina",
#   emoji: "🚣‍♀️",
#   sport: "Rowing",
#   status: :training
# }
# |> Repo.insert!()

# %Athlete{
#   name: "Katie",
#   emoji: "🏊",
#   sport: "Swimming",
#   status: :resting
# }
# |> Repo.insert!()

# alias LiveViewStudio.PizzaOrders.PizzaOrder

# pizza_toppings = [
#   "Chicken 🍗",
#   "Basil 🌿",
#   "Garlic 🧄",
#   "Bacon 🥓",
#   "Cheese 🧀",
#   "Salmon 🐠",
#   "Shrimp 🍤",
#   "Broccoli 🥦",
#   "Onions 🧅",
#   "Tomatoes 🍅",
#   "Mushrooms 🍄",
#   "Pineapples 🍍",
#   "Eggplants 🍆",
#   "Avocados 🥑",
#   "Peppers 🌶",
#   "Pepperoni 🍕"
# ]

# for _i <- 1..1000 do
#   [topping_1, topping_2] =
#     pizza_toppings
#     |> Enum.shuffle()
#     |> Enum.take(2)

#   price =
#     (:rand.uniform() * (30 - 10) + 30)
#     |> Decimal.from_float()
#     |> Decimal.round(2)

#   %PizzaOrder{
#     size: Faker.Pizza.size(),
#     style: Faker.Pizza.style(),
#     topping_1: topping_1,
#     topping_2: topping_2,
#     price: price
#   }
#   |> Repo.insert!()
# end
