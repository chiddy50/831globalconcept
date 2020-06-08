<?php

namespace {
    class HomePageController extends PageController{

        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }

        public function SecuritySystems($limit){

            return SingleProductPage::get()
            ->filter([
                'ID' => [20,33,22]
            ]);
        }

        public function Cctv(){
            return SingleProductPage::get()->filter([
                'ID' => [23,24,25]
            ]);
        }

        public function one(){

            return SingleProductPage::get()
            ->filter([
                'ID' => 21
            ]);
        }


    }
}
