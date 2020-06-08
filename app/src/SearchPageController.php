<?php

namespace {
    class SearchPageController extends PageController{

        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }

        public function searchresults(){
            $val = $this->getRequest()->postVar('search');
            $products = SingleProductPage::get()->filter([
                'Title:PartialMatch' => $val,
            ]);
            return $products;
        }


    }
}


?>

