# frozen_string_literal: true

task fail: :environment do
  uu = User.create
  pp = Post.create
  uu.add_role :admin, pp
  Post.with_role(:admin, uu)
end
