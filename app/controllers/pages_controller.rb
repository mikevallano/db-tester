class PagesController < ApplicationController
  def home
  end

  def about
  end

  def awaiting_confirmation
  end

  def dump_download
    send_file(
      "#{Rails.root}/app/public/latest.dump",
      filename: "latest.dump",
      type: "text/plain"
    )
  end
end
