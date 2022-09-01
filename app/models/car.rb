class Car < ApplicationRecord
    DOC_APPROVAL_STATUS = { in_pending_approval: 0, auto_approved: 1, auto_rejected: 2, manually_approved: 3, manually_rejected: 4 }

    enum pan_status: DOC_APPROVAL_STATUS, _prefix: 'pan'
    enum gst_status: DOC_APPROVAL_STATUS, _prefix: 'gst'
    enum arn_status: DOC_APPROVAL_STATUS, _prefix: 'arn'
end
