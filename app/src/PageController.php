<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\Forms\Form;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\FormAction;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [

        ];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
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

        public function FirstThreeProducts()
        {
            return Product::get()->limit(3);
        }

        public function Clients()
        {
            return OurClients::get();
        }

        public function singleProducts(){

            return SingleProductPage::get();
        }

        public function ParentProducts(){
            return PageProduct::get();
        }
        // SS_HTTPRequest $request, DataModel $model






    }
}
