class Transfer
  attr_accessor :sender,:receiver,:status,:amount,:count
  
def initialize(sender,receiver, amount,status='pending')
  @sender=sender
  @receiver=receiver
  @amount=amount
  @status=status
end 

def valid? 
  if self.sender.valid? && self.receiver.valid?
    true 
  else
    false 
  end 
end 

def execute_transaction
  if   balance < @amount
    @status = "rejected"
      return "Transaction rejected. Please check your account balance."
      elsif @status == "complete"
      puts "Transaction was already excuted"
       else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
  end 
end 

  
end
