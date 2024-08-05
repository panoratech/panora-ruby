# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # UnifiedTicketingTicketInputType - The type of the ticket. Authorized values are PROBLEM, QUESTION, or TASK
    class UnifiedTicketingTicketInputType < T::Enum
      enums do
        BUG = new('BUG')
        SUBTASK = new('SUBTASK')
        TASK = new('TASK')
        TO_DO = new('TO-DO')
      end
    end

  end
end
