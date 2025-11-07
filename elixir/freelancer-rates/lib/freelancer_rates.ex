defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    savings = before_discount * (discount / 100)
    before_discount - savings
  end

  def monthly_rate(hourly_rate, discount) do
    trunc(Float.ceil(apply_discount(daily_rate(hourly_rate) * 22, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    per_day = daily_rate(hourly_rate) |> apply_discount(discount)
    Float.floor(budget / per_day, 1)
  end
end
