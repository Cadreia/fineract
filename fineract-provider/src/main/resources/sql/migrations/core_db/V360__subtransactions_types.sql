--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements. See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership. The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License. You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied. See the License for the
-- specific language governing permissions and limitations
-- under the License.
--

alter table m_savings_account_transaction add column is_parent tinyint(1) DEFAULT false;
alter table m_savings_account_transaction add column parent_id bigint(20) DEFAULT NULL;
alter table m_savings_account_transaction add constraint FK_m_savings_account_transaction_parent_id foreign key (parent_id) references m_savings_account_transaction (id)
