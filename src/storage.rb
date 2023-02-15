require 'json'

class Storage
  def self.save_data(class_name, object)
    File.write("./src/JSON/#{class_name}.json", JSON.dump(object))
  end

  def self.load_data(class_name)
    return [] unless File.exist?("./src/JSON/#{class_name}.json")

    file_data = File.read("./src/JSON/#{class_name}.json")
    JSON.parse(file_data, create_additions: true)
  end
end
