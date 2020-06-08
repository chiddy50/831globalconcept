<?php

namespace {
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Assets\Image;
    use SilverStripe\Forms\TextField;
    use SilverStripe\AssetAdmin\Forms\UploadField;

class AboutPage extends Page
    {
        private static $db = [
            'Vision' => 'Text',
            'Staff' => 'Varchar',
            'Designation' => 'Varchar'
        ];

        private static $has_one = [
            'Photo' => Image::class
        ];

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $photo = UploadField::create('Photo');
            $photo->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg']);
            $fields->addFieldToTab('Root.Attachments', $photo);
            $fields->addFieldToTab('Root.Main', TextareaField::create('Vision', 'Our Vision'),'Content');
            $fields->addFieldToTab('Root.Main', TextField::create('Staff', 'Name of Owner'), 'Content');
            $fields->addFieldToTab('Root.Main', TextField::create('Designation', 'Designation'), 'Content');
            return $fields;
        }
    }
}
