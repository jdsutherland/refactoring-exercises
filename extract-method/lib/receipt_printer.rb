class ReceiptPrinter
  COST = {
    'meat' => 5,
    'milk' => 3,
    'candy' => 1,
  }

  TAX = 0.05

  def initialize(output: $stdout, items:)
    @output = output
    @items = items
  end

  def print
    output_items
    output_divider
    output_subtotal
    output_tax
    output_divider
    output_total
  end

  private

  attr_reader :output, :items

  def output_with(label:, cost:)
    @output.puts "#{label}: #{sprintf('$%.2f', cost)}"
  end

  def output_items
    @items.each { |item| output_with(label: item, cost: item_cost(item)) }
  end

  def item_cost(item)
    COST[item]
  end

  def output_divider
    @output.puts divider
  end

  def divider
    '-' * 13
  end

  def output_subtotal
    output_with(label: 'subtotal', cost: subtotal)
  end

  def output_tax
    output_with(label: 'tax', cost: (subtotal * TAX))
  end

  def output_total
    output_with(label: 'total', cost: subtotal + (subtotal * TAX))
  end

  def subtotal
    @_subtotal ||= @items.reduce(0) { |sum, item| sum + item_cost(item) }
  end
end
