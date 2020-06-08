<?php

namespace SilverStripe\Custom;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\FieldList;

class SiteConfigExtension extends DataExtension
{

    private static $db = [
        'Address' => 'Text',
        'Phone' => 'Varchar',
        'Email' => 'Varchar'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab(
            'Root.Main',[
            TextareaField::create('Address'),
            TextField::create('Phone'),
            TextField::create('Email')
        ]);
    }
}
