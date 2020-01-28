require 'date'

def create_loading_docks(docks=3)
  @created_date = DateTime.now.strftime('%d/%m/%Y')
  @balance = 120_000.5
  @withdrawn = 500
  @credit = 2000

  loading_docks = []
  (1..docks).each { |number|
    file_name = "dock_#{number}.txt"
    loading_docks << file_name
    file = File.open(file_name,'w+')
    file.write("#{number} | #{@created_date} | £#{format('%.2f', @credit)} | £#{format('%.2f', @withdrawn)} | £#{format('%.2f',@balance)}")
    file.close
  }
  loading_docks
end

def open_loading_docks(docks)
    puts "Transaction no. | Date | Deposit | Withdrawals | Balance "
  docks.each { |dock|
    file = File.open(dock,'r')
    puts file.read
    file.close
  }
end
