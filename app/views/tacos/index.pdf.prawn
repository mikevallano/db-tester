# Assignment
require 'prawn/table'
pdf = Prawn::Document.new
pdf.render_file "assignment.pdf"


pdf.text "Hello World", size: 30

items = @tacos.map do |taco|
  [taco.name]
end

pdf.table items
