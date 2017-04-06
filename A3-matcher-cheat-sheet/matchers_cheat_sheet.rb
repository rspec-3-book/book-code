expect(a).to matcher

expect(a).not_to matcher
# or
expect(a).to_not matcher

expect { some_code }.to matcher
#
expect { do_something }.to change(obj, :attr)
# or
expect { do_something }.to change { obj.attr }

expect { |probe| obj.some_method(&probe) }.to yield_control
