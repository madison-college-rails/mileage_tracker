require 'spec_helper'

describe Make do
  it { should have_many :models }
  it { should have_many(:vehicles).through(:models) }

  it { should have_db_column(:name).of_type(:string) }
end
