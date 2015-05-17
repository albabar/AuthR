module PagesHelper
  def inspire
    quote = [
        'When there is no desire, all things are at peace. - Laozi',
        'Simplicity is the ultimate sophistication. - Leonardo da Vinci',
        'Simplicity is the essence of happiness. - Cedric Bledsoe',
        'Smile, breathe, and go slowly. - Thich Nhat Hanh',
        'Simplicity is an aquired taste. - Katharine Gerould',
        'You paid with a dummy card, what else do you want? - Babar',
        'Don\'t take alkatra! - Babar',
        'You know, this one is just a dummy app? - Babar',
        ' When I die, I want to go peacefully like my grandfather did–in his sleep. Not yelling and screaming like the passengers in his car. - Bob Monkhouse',
        ' Always borrow money from a pessimist. He won’t expect it back. - Oscar Wilde',
        'Programmers get overlaid.',
        'People with narrow minds usually have broad tongues.',
        'If practice makes perfect, and nobody\'s perfect, why practice?',
        'He who laughs last didn\'t get the joke.',
        'Digital circuits are made from analog parts.',
        'He who hesitates is last.',
        'A man\'s house is his hassle.',
        'A chicken is an egg\'s way of producing more eggs.',
        'Charlie was a chemist, but Charlie is no more. What Charlie thought was H2O was H2SO4.',
        'Reality is for people who can\'t face science fiction.',
        'Shift to the left, shift to the right, mask in, mask out, BYTE, BYTE, BYTE !!!'
    ]

    quote[rand(quote.length)]
  end
end
