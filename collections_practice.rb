def begins_with_r(array)
  val = true
  array.each {|element|
    if element[0] != "r"
      val = false
    end}
  val
end

def contain_a(array)
  new_array = []
  array.each {|element|
  if element.include?("a")
  new_array << element
end}
new_array
end

def first_wa(array)
  array.each{|element|
  return element if element.match(/^wa/)}
end

def remove_non_strings(array)
  array.delete_if {|a| a.class != String}
end

def count_elements(array)
  array.each {|org_hash|
  org_hash[:count] = 0
  name = org_hash[:name]
  array.each{|hash|
    if hash[:name] == name
     org_hash[:count] +=1
   end}}.uniq
end

def merge_data(hash1, hash2)
  hash2[0].collect {|name, prop_hash|
    new_prop_hash = {}
    hash1.each {|new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
    end}
    new_prop_hash}
end

def find_cool(array)
  new_array = []
  array.each {|element|
  new_array << element if element[:temperature] == "cool"}
  new_array
end

def organize_schools(schools)
  sorted_schools = {}
  schools.each {|name, location_hash|
    location = location_hash[:location]
    sorted_schools[location] ||= []
      sorted_schools[location] << name}
    sorted_schools
end