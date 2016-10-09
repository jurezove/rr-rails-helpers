module CarsHelper
  def car_description(car)
    content_tag :span, class: "description" do
      car.description.present? ? car.description : "No description yet."
    end
  end

  def car_link(car)
    content_tag :span do
      content_tag :strong do
        link_to "#{car.brand} #{car.make}", car
      end
    end
  end

  def car_image(car)
    content_tag :div do
      car.image.present? ? image_tag(car.image) : content_tag(:span, "No image yet.")
    end
  end
end
