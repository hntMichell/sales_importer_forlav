require './services/file_importer'

RSpec.describe FileImporter do
  it 'calculates total correctly' do
    total = FileImporter.import('spec/example_input.tab')
    expect(total).to be > 0
  end
end