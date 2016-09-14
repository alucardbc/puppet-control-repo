Facter.add('datacenter') do
  setcode do
    hostname = Facter.value(:hostname)
    case hostname
    when /den/
      'denver'
    when /dfw/
      'dallas'
    else
      'nodc'
    end
  end
end
