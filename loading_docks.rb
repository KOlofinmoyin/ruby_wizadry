require 'date'

def create_loading_docks(docks=3)
  @created_date = DateTime.now.strftime("%d/%m/%Y")
  loading_dock = []
  (1..docks).each { |number|
    file_name = "dock_#{number}.txt"
    loading_dock << file_name
    file = File.open(file_name,'w+')
    file.write("Loading dock #{number}, created on #{@created_date}.")
    file.close
  }
  loading_dock
end

def open_loading_docks(loading_dock)
  loading_dock.each { |dock|
    file = File.open(dock,'r')
    puts file.read
    file.close
  }
end
