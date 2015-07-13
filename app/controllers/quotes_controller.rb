class QuotesController < ::Rhino::Controller

  def index
    all_quotes = Quotes.all
    render :index, all_quotes: all_quotes
  end

  def a_quote
    quote_1 = Quotes.find(1)
    user_agent = request.user_agent
    render :a_quote, quote: quote_1
  end

  def show
    quote = Quotes.find(params["id"])
    user_agent = request.user_agent
    render :a_quote, quote: quote
  end

  def new
    render :new
  end

  def create
    quote = Quotes.new(params['quote'])
    quote.save if quote.valid?
    render :a_quote, quote: quote
  end

  def delete
    quote_id = params['quote_id']
    Quotes.delete(quote_id)
    return "Deleted quote id: #{quote_id}"
  end

end
