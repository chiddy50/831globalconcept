<?php

namespace {
    use SilverStripe\Forms\TextField;

class Specialty extends Page{


        private static $db = [
            'Name' => 'Varchar',
        ];

        private static $has_one = [

        ];

        private static $can_be_root = false;

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $fields->addFieldToTab('Root.Main', TextField::create('Name'),'Content');

            return $fields;
        }

    }
}
