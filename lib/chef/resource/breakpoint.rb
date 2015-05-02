#
# Author:: Daniel DeLeo (<dan@kallistec.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


require 'chef/resource'

class Chef
  class Resource
    class Breakpoint < Chef::Resource
      provides :breakpoint

      def initialize(action="break", *args)
        @name = caller.first
        super(@name, *args)
        @action = "break"
        @allowed_actions << :break
        @resource_name = :breakpoint
      end
    end
  end
end
