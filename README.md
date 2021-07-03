# Cldr HTML

HTML helper functions for CLDR.

## Usage

* Select currencies - by default the currencies of the locales configured in the default backend

* Select units - by default the units returned by `Cldr.Unit.known_units/0`

* Select territories - by default the territories returned by `Cldr.known_territories/0`

* [Implemented] Select locales - by default the list of locales known to `Cldr.default_backend!/0`

* [Not Implemented] Select days of the week and months of the year in a given locale

## Examples

```elixir
  iex> import Phoenix.HTML
  iex> safe_to_string Cldr.HTML.Currency.select(:my_form, :currency, selected: :USD, currencies: ~w(usd eur jpy cop))
  "<select id=\"my_form_currency\" name=\"my_form[currency]\" selected=\"USD\"><option value=\"COP\">COP - Colombian Peso</option><option value=\"EUR\">EUR - Euro</option><option value=\"JPY\">JPY - Japanese Yen</option><option value=\"USD\">USD - US Dollar</option></select>"
```

## Installation

`Cldr.HTML` can be installed by adding `cldr_html` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cldr_html, "~> 0.6"}
  ]
end
```
The documentation can be found at [https://hexdocs.pm/cldr_html](https://hexdocs.pm/cldr_html).

## Configuration

The available functions depends on the configured dependencies in `mix.exs`:

For `Cldr.HTML.Currency.select/3`:
      {:ex_cldr_currencies, "~> 2.11"},

For `Cldr.HTML.Unit.select/3`:
      {:ex_cldr_units, "~> 3.7"},

For `Cldr.HTML.Locale.select/3`:
      {:ex_cldr_locale_display, "~> 1.0"},

For `Cldr.HTML.Territory.select/3`:
      {:ex_cldr_territories, "~> 2.2"},