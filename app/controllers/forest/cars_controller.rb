class Forest::CarsController < ForestLiana::SmartActionsController
    before_action :set_attributes
    before_action :set_car, only: [:approve_pan, :approve_gst, :approve_arn, :reject_pan, :reject_gst, :reject_arn]


    def approve_pan
        @car.pan_status = 'manually_approved'
        if @car.save
            render json: { success: 'Pan Approved.' }
        else
            render json: { error: "Error in Pan Approval: #{@car.errors}" }
        end
    end

    def reject_pan
        @car.pan_status = 'manually_rejected'
        if @car.save
            render json: { success: 'Pan Rejected.' }
        else
            render json: { error: "Error in Pan Rejection:  #{@car.errors}" }
        end
    end
    def approve_gst
        @car.gst_status = 'manually_approved'
        if @car.save
            render json: { success: 'Gst Approved.' }
        else
            render json: { error: "Error in Gst Approval: #{@car.errors}" }
        end
    end

    def reject_gst
        @car.gst_status = 'manually_rejected'
        if @car.save
            render json: { success: 'Gst Rejected.' }
        else
            render json: { error: "Error in gst Rejection:  #{@car.errors}" }
        end
    end 
    
    def approve_arn
        @car.arn_status = 'manually_approved'
        if @car.save
            render json: { success: 'Arn Approved.' }
        else
            render json: { error: "Error in Arn Approval: #{@car.errors}" }
        end
    end

    def reject_arn
        @car.arn_status = 'manually_rejected'
        if @car.save
            render json: { success: 'Arn Rejected.' }
        else
            render json: { error: "Error in Arn Rejection:  #{@car.errors}" }
        end
    end

    private
    # Get the values of the input fields entered by the admin user.
    def set_attributes
      @attrs = params.dig('data', 'attributes', 'values')
    end
  
    def set_car
      car_id = ForestLiana::ResourcesGetter.get_ids_from_request(params, forest_user).first
      @car = Car.find(car_id)
    end
  
end