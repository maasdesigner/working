Refinery::PagesController.class_eval do
  before_filter :fetch_events, :only => [:show]

  def fetch_events
    @events = ::Refinery::Events::Event.all
  end
  protected :fetch_events
end