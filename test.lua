require "class" --you need get the module or you are a noob

Account = class(function(acc, balance) --make a base/init
    if balance then
        acc.balance = balance
    else
        acc.balance = 0
    end
end)

--methods
function Account:withdraw(amount)
    self.balance = self.balance - amount --self means the last object
end

function Account:deposit(amount)
    self.balance = self.balance + amount
end

function Account:see_money()
    print(self.balance)
end

local MyAccount = Account() --extend the class (its a table|function)

--do the methods
MyAccount:deposit(100)

MyAccount:withdraw(20)

MyAccount:see_money()