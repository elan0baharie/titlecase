require('rspec')
require('./lib/title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes multiple word titles") do
    expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  end

  it("does not capitalize designated words that are after the first word") do
    expect(("from beowulf to the incredible hulk").title_case()).to(eq("From Beowulf to the Incredible Hulk"))
  end

  it("handles mixed case entries") do
    expect(("This old beoWulf").title_case()).to(eq("This Old Beowulf"))
  end
end
