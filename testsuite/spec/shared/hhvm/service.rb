shared_examples 'hhvm::service::running' do
    describe command('service hhvm pid | tr -d \'\n\'') do
        # must not pid 0
        its(:stdout) { should_not match %r!^0$! }
        # numeric match
        its(:stdout) { should     match %r!^[0-9]+$! }
    end
end