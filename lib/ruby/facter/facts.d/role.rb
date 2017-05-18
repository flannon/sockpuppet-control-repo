Facter.add(:role) do
  confine :kernel => 'Darwin'
  setcode do
    Facter::Core::Execution.exec('echo kenny')
  end
end
