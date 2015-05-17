module PagesHelper
  def inspire
    quote = [
        'When there is no desire, all things are at peace. - Laozi',
        'Simplicity is the ultimate sophistication. - Leonardo da Vinci',
        'Simplicity is the essence of happiness. - Cedric Bledsoe',
        'Smile, breathe, and go slowly. - Thich Nhat Hanh',
        'Simplicity is an aquired taste. - Katharine Gerould',
    ]

    quote[rand(quote.length)]
  end
end
