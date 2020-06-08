<?php

namespace {
    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
    class HomePage extends Page
    {
        private static $db = [

        ];
        private static $has_one = [

        ];

        private static $has_many = [
            'OurClients' => OurClients::class,
        ];

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Clients', GridField::create(
                'OurClients',
                'Our Clients',
                $this->OurClients(),
                GridFieldConfig_RecordEditor::create()
            ));

            return $fields;
        }

        public function SpecialtyList()
        {
            return Specialty::get();
        }

        public function AllProducts(){
            return Product::get();
        }

        public function AllProductItems(){
            return ProductItem::get();
        }





    }
}
