defmodule Cldr.HTML do
  @moduledoc """
  Implements `Phoenix.HTML.Form.select/4` specifically
  for localized display of [Cldr](https://hex.pm/packages/ex_cldr)-based data.

  """

  if Cldr.Code.ensure_compiled?(Cldr.Currency) do
    defdelegate currency_select(form, field, options), to: Cldr.HTML.Currency, as: :select
  end

  if Cldr.Code.ensure_compiled?(Cldr.Unit) do
    defdelegate unit_select(form, field, options), to: Cldr.HTML.Unit, as: :select
  end

  if Cldr.Code.ensure_compiled?(Cldr.Territory) do
    defdelegate territory_select(form, field, options), to: Cldr.HTML.Territory, as: :select
    defdelegate territory_options(options), to: Cldr.HTML.Territory, as: :territory_options
  end

  if Cldr.Code.ensure_compiled?(Cldr.LocaleDisplay) do
    defdelegate locale_select(form, field, options), to: Cldr.HTML.Locale, as: :select
  end
end
